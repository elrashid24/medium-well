import { connect } from 'react-redux';
import React from 'react';
// import { Link } from 'react-router-dom';
import { login, receiveErrors } from '../../actions/session_actions';
import SessionForm from './session_form';
import {openModal, closeModal} from '../../actions/modal_actions';


const mapStateToProps = ({ errors }) => {
    return {
        errors: errors.session,
        formType: 'login',
    };
};
const mapDispatchToProps = dispatch => {
    return {
        processForm: (user) => dispatch(login(user)),
        otherForm: (
            <button className='switch-form' onClick={() => dispatch(openModal('signup'))}>
              Create one 
      </button>
        ),
        closeModal: () => dispatch(closeModal()),
        clearErrors: () => dispatch(receiveErrors([]))
    };
    
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);