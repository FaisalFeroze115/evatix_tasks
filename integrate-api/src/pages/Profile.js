import React, {useState, useEffect} from 'react';
import { Link, useHistory } from 'react-router-dom';
import Header from '../partials/Header';
import Footer from '../partials/Footer';


const Profile = () => {

    const [user_info, setUser_info] = useState(JSON.parse(localStorage.getItem('user-info')));
    const [ACCESS_TOKEN, setACCESS_TOKEN] = useState(user_info ? JSON.parse(localStorage.getItem('user-info')).access_token : "");
    const [id, setId] = useState(user_info ? JSON.parse(localStorage.getItem('user-info')).user.id : "");
    const history = useHistory();

    const deleteProfile = async () => {

        let item = {id};
        console.log('before hitting api',item);
        const res = await fetch('http://127.0.0.1:8000/api/user/delete/profile',{
            method:'DELETE',
            body: JSON.stringify(item),
            headers: 
                {
                    'Content-Type': "application/json",
                    "Accept": "application/json",
                    'Authorization': `Bearer ${ACCESS_TOKEN}`
                }
        })
        const result = await res.json();
        console.log(result)
        if(result.result == "user has been deleted"){
            alert(result.result);
            localStorage.clear();
            history.push('/');
        }else{
            alert(result.result);
        }
        

    }


    return (
        <div className="flex flex-col min-h-screen overflow-hidden">
            <Header/>

                <main className="flex-grow">
                    <section className="bg-gradient-to-b from-gray-100 to-white">
                    <div className="max-w-6xl mx-auto px-4 sm:px-6">
            <div className="pt-32 pb-12 md:pt-40 md:pb-20">

              {/* Page header */}
              <div className="max-w-3xl mx-auto text-center pb-12 md:pb-20 flex justify-center">
                <h1 className="h1 flex justify-center">Welcome {user_info ? user_info.user.name : null}. You are Logged In</h1>
              </div>

              {/* Form */}
              <div className="max-w-sm mx-auto">
                 <p className="h1 text-xl mb-10 flex justify-center">Your Profile Info</p>
                
                  <div className="flex flex-wrap -mx-3 mb-4">
                    <div className="w-full px-3">
                      <label className="block text-gray-800 text-2xl font-medium mb-1 flex justify-center" htmlFor="name"> <span className="text-blue-600">Name:</span> {user_info ? user_info.user.name : null}</label>
  
                      
                    </div>
                  </div>

                  <div className="flex flex-wrap -mx-3 mb-4">
                    <div className="w-full px-3">
                      <label className="block text-gray-800 text-2xl font-medium mb-1 flex justify-center" htmlFor="name"> <span className="text-blue-600">Full Name:</span>  { user_info ? user_info.user.full_name : null}</label>
                      
                    </div>
                  </div>

                  <div className="flex flex-wrap -mx-3 mb-4">
                    <div className="w-full px-3">
                      <label className="block text-gray-800 text-2xl font-medium mb-1 flex justify-center" htmlFor="name"> <span className="text-blue-600">Date of Birth:</span>  {user_info ? user_info.user.dob : null}</label>
                      
                    </div>
                  </div>

                  <div className="flex flex-wrap -mx-3 mb-4">
                    <div className="w-full px-3">
                      <label className="block text-gray-800 text-2xl font-medium mb-1 flex justify-center" htmlFor="name"> <span className="text-blue-600">Profession:</span>  { user_info ? user_info.user.profession : null}</label>
                      
                    </div>
                  </div>

                  <div className="flex flex-wrap -mx-3 mb-4">
                    <div className="w-full px-3">
                      <label className="block text-gray-800 text-2xl font-medium mb-1 flex justify-center" htmlFor="email"><span className="text-blue-600">Email:</span> <span> { user_info ? user_info.user.email : null} </span></label>
                      
                    </div>
                  </div>
                  <div className="flex flex-wrap -mx-3 mt-6">
                    <div className="w-full px-3">
                      <Link to="/update/profile" className="btn text-white bg-blue-600 hover:bg-blue-700 w-full">Update Your Profile</Link>
                    </div>
                  </div>

                  <div className="flex flex-wrap -mx-3 mt-2">
                    <div className="w-full px-3">
                      <button onClick={deleteProfile} className="btn text-white bg-red-600 hover:bg-red-700 w-full">Delete Your Profile</button>
                    </div>
                  </div>
                
          

              </div>

            </div>
          </div>
                    </section>   
                </main>

                
            <Footer/>
            
        </div>
    )
}

export default Profile
