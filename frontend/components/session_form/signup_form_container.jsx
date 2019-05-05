import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { signup } from '../../actions/session_actions';
import SessionForm from './session_form';
import {openModal, closeModal} from '../../actions/modal_actions';

const mapStateToProps = ({ errors }) => {
    
    return {
        errors: errors.session,
        formType: 'signup',
        // navLink: <Link to="/login">log in instead</Link>,
    };
};

const mapDispatchToProps = dispatch => {
    
    return {
        processForm: (user) => dispatch(signup(user)),
        otherForm: (
            <button className="switch-to-login-form" onClick={() => dispatch(openModal('login'))}>
                Sign In Instead
            </button>
        ),
            closeModal: () => dispatch(closeModal())

        
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);
