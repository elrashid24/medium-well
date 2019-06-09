import React from "react";
import { withRouter } from "react-router-dom";

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      firstname: "",
      lastname: "",
      email: "",
      password: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemo = this.handleDemo.bind(this);
  }

  componentDidMount() {
    this.props.clearErrors();
  }

  update(field) {
    return e =>
      this.setState({
        [field]: e.currentTarget.value
      });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user).then(this.props.closeModal);
  }

  handleDemo(e) {
    e.preventDefault();
    let demoUser = {
      email: "ShamsCharania@gmail.com",
      first_name: "Demo",
      last_name: "User",
      password: "123456"
    };
    this.props.processForm(demoUser).then(this.props.closeModal);
  }

  renderErrors() {
    return (
      <ul className="login-errors">
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>{error}</li>
        ))}
      </ul>
    );
  }

  render() {
    if (this.props.formType === "signup") {
      return (
        <div className="create-user-l1">
          <div onClick={this.props.closeModal} className="x">
            &times;
          </div>
          <form className="create-user-l2" onSubmit={this.handleSubmit}>
            <h1 className="session-title">Join Medium Well.</h1>
            <br />
            {this.renderErrors()}

            <div className="user-info-l1">
              <br />

              <label>
                <input
                  type="text"
                  value={this.state.firstname}
                  onChange={this.update("firstname")}
                  className="create-user-input"
                  placeholder="first name"
                />
              </label>

              <br />
              <label>
                <input
                  type="text"
                  value={this.state.lastname}
                  onChange={this.update("lastname")}
                  className="create-user-input"
                  placeholder="last name"
                />
              </label>

              <br />
              <label>
                <input
                  type="text"
                  value={this.state.email}
                  onChange={this.update("email")}
                  className="create-user-input"
                  placeholder="email"
                />
              </label>
              <br />
              <label>
                <input
                  type="password"
                  value={this.state.password}
                  onChange={this.update("password")}
                  className="create-user-input"
                  placeholder="password"
                />
              </label>
              <br />
              <input
                className="session-submit"
                type="submit"
                value="Start Reading!"
              />
            </div>
          </form>

          <div className="opposite-modal">{this.props.otherForm}</div>
        </div>
      );
    } else {
      return (
        <div className="login-user-l1">
          <div onClick={this.props.closeModal} className="x">
            &times;
          </div>
          <form onSubmit={this.handleSubmit} className="login-user-l2">
            <h1 className="session-title">Welcome Back.</h1>
            <br />

            {this.renderErrors()}
            <div className="user-info-l1">
              <br />
              <label>
                <input
                  type="text"
                  value={this.state.email}
                  onChange={this.update("email")}
                  className="login-input"
                  placeholder="email"
                />
              </label>
              <br />
              <label>
                <input
                  type="password"
                  value={this.state.password}
                  onChange={this.update("password")}
                  className="login-input"
                  placeholder="password"
                />
              </label>
              <br />
              <input className="session-submit" type="submit" value="Sign In" />
            </div>
          </form>
          <div className="opposite-modal">
            No account? {this.props.otherForm}
          </div>
          <div>
            <button className="demo-button" onClick={this.handleDemo}>
              Demo
            </button>
          </div>
        </div>
      );
    }
  }
}
export default withRouter(SessionForm);
