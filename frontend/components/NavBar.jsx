import React from "react";
import { Link } from "react-router-dom";

export const NavBar = ({
  isLoggedIn,
  openLoginModal,
  openSignupModal,
  onLogout
}) => (
  <div className="nav-bar-container">
    <nav className="nav-bar-nav">
      <Link to="/">
        <span className="nav-bar-logo">Medium Well</span>
      </Link>
      {isLoggedIn ? (
        <AuthButtons onLogout={onLogout} />
      ) : (
        <NoAuthButtons
          openLoginModal={openLoginModal}
          openSignupModal={openSignupModal}
        />
      )}
    </nav>
  </div>
);

const NoAuthButtons = ({ openLoginModal, openSignupModal }) => (
  <div className="nav-bar-btn-group">
    <button className="nav-bar-btn default" onClick={openLoginModal}>
      Sign in
    </button>
    <button className="nav-bar-btn primary" onClick={openSignupModal}>
      Get started!
    </button>
  </div>
);

const AuthButtons = ({ onLogout }) => (
  <div className="nav-bar-btn-group">
    <Link to="/stories/mine" className="nav-bar-avi">
      My Stories
    </Link>
    <button className="nav-bar-btn default" onClick={onLogout}>
      Log Out
    </button>
  </div>
);
