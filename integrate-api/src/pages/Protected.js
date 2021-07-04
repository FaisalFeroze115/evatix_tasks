import React, {useEffect, useState} from 'react'
import { useHistory } from 'react-router-dom';

const Protected = ({Cmp}) => {

    let history = useHistory();
    const [user_info, setUser_info] = useState(JSON.parse(localStorage.getItem('user-info')));

    if(!user_info){
        history.push('/signin');
    }

    useEffect(()=>{
        if(!localStorage.getItem('user-info')){
            history.push('/signin');
        }
    },[])

    return (
        <div>
            <Cmp/>
        </div>
    )
}

export default Protected
