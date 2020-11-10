import React, { Component } from 'react';
import Avatar from './Avatar.js';

class BotMessageBox extends Component{
    // constructor(props) {
    //     super(props);
    // }

    render(){
        const appearance = this.props.appearance;
        const message = this.props.message;

        return(
            <li className={`message ${appearance} appeared`}>
                <Avatar></Avatar>
                <div className="text_wrapper">
                    <div className="text">{message}</div>
                </div>
            </li>
      );
    }
}

export default BotMessageBox;