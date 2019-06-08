import React from "react";
import { Link } from "react-router-dom";

export const NavBar = ({
  isLoggedIn,
  openLoginModal,
  openSignupModal,
  onLogout
}) => (
  <div className="nav-bar">
    <nav className="nav">
      <Link to="/" className="nav-logo">
        <span>Medium Well</span>
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
  <div className="nav-buttons">
    <button className="nav-button" onClick={openLoginModal}>
      Sign in
    </button>
    <button className="nav-button" onClick={openSignupModal}>
      Get started!
    </button>
  </div>
);

const AuthButtons = ({ onLogout }) => (
  <div className="nav-buttons">
    <button className="nav-button" onClick={onLogout}>
      Log Out
    </button>
    <Link to="/stories/mine">
      <img src="" alt="your avatar" className="avatar" />
    </Link>
  </div>
);
