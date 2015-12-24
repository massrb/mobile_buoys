


var ProfileList = React.createClass({
  
	render: function(){
		var profileNodes = this.props.profiles.map(function(profile){
			return <Profile name={profile.name} id={profile.id} key={profile.id}/>
		});
		
		return (
			<div className="profile-list">
			  { profileNodes }
			</div>
		)
		
	}
	
});
