import React, {useState, useEffect} from 'react';
import { Link, useHistory } from 'react-router-dom';
import Header from '../partials/Header';
import Footer from '../partials/Footer';


const UpdateProfile = () => {
    const history = useHistory();
    const [user_info, setUser_info] = useState(JSON.parse(localStorage.getItem('user-info')));
    const [ACCESS_TOKEN, setACCESS_TOKEN] = useState(user_info ? JSON.parse(localStorage.getItem('user-info')).access_token : "");
    const [id, setId] = useState(user_info ? JSON.parse(localStorage.getItem('user-info')).user.id : "");
    const [name, setName] = useState(user_info ? user_info.user.name : "");
    const [full_name, setFull_name] = useState(user_info ? user_info.user.full_name : "");
    const [profession, setProfession] = useState(user_info ? user_info.user.profession : "");
    const [dob, setDob] = useState(user_info ? user_info.user.dob : "");
    


    const update = async (e) => {
        e.preventDefault();
        let item = {id, name, full_name, profession, dob};
        console.log('before hitting api',item);
        const res = await fetch('http://127.0.0.1:8000/api/user/update/profile',{
            method:'PUT',
            body: JSON.stringify(item),
            headers: 
                {
                    'Content-Type': "application/json",
                    "Accept": "application/json",
                    'Authorization': `Bearer ${ACCESS_TOKEN}`
                }
        })
        const result = await res.json();
        console.log('result',result);
        localStorage.setItem("user-info",JSON.stringify(result));
        history.push('/profile');

    }
 


    return (
        <div className="flex flex-col min-h-screen overflow-hidden">
            <Header/>

                <main className="flex-grow">
                    <section className="bg-gradient-to-b from-gray-100 to-white">
                    <div className="max-w-6xl mx-auto px-4 sm:px-6">
            <div className="pt-32 pb-12 md:pt-40 md:pb-20">

              {/* Page header */}
              <div className="max-w-3xl mx-auto text-center pb-12 md:pb-20">
                <h1 className="h1">Update Your Profile</h1>
              </div>

              {/* Form */}
              <div className="max-w-sm mx-auto">
                <form>
                  <div className="flex flex-wrap -mx-3 mb-4">
                    <div className="w-full px-3">
                      <label className="block text-gray-800 text-sm font-medium mb-1" htmlFor="name">Name</label>
                      <input id="name" value={name} onChange={(e)=>{setName(e.target.value)}} type="text" className="form-input w-full text-gray-800" placeholder="Enter your name" required />
                    </div>
                  </div>

                  <div className="flex flex-wrap -mx-3 mb-4">
                    <div className="w-full px-3">
                      <label className="block text-gray-800 text-sm font-medium mb-1" htmlFor="name">Full Name</label>
                      <input id="full_name" value={full_name} onChange={(e)=>{setFull_name(e.target.value)}} type="text" className="form-input w-full text-gray-800" placeholder="Enter your full name" />
                    </div>
                  </div>

                  <div className="flex flex-wrap -mx-3 mb-4">
                    <div className="w-full px-3">
                      <label className="block text-gray-800 text-sm font-medium mb-1" htmlFor="name">Date of Birth</label>
                      <input id="dob" value={dob} onChange={(e)=>{setDob(e.target.value)}} type="date" className="form-input w-full text-gray-800" placeholder="Enter your full name" />
                    </div>
                  </div>

                  <div className="flex flex-wrap -mx-3 mb-4">
                    <div className="w-full px-3">
                      <label className="block text-gray-800 text-sm font-medium mb-1" htmlFor="name">Profession</label>
                      <input id="profession" value={profession} onChange={(e)=>{setProfession(e.target.value)}} type="text" className="form-input w-full text-gray-800" placeholder="Enter your full name"/>
                    </div>
                  </div>

                  <div className="flex flex-wrap -mx-3 mb-4">
                    <div className="w-full px-3">
                      <label className="block text-gray-800 text-sm font-medium mb-1" htmlFor="email">Email (can not update email)</label>
                      <input id="email" value={user_info ? user_info.user.email : null} type="text" className="form-input w-full text-gray-800" disabled/>
                    </div>
                  </div>
                  <div className="flex flex-wrap -mx-3 mt-6">
                    <div className="w-full px-3">
                      <button onClick={update} className="btn text-white bg-blue-600 hover:bg-blue-700 w-full">Update</button>
                    </div>
                  </div>
                </form>
          

              </div>

            </div>
          </div>
                    </section>   
                </main>

                
            <Footer/>
            
        </div>
    )
}

export default UpdateProfile
