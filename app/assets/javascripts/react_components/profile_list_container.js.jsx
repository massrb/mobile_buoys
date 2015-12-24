

var ProfileListContainer = React.createClass({
	getInitialState: function () {
		console.log('in react plist');
    return JSON.parse(this.props.prof);
  },
  
	render: function(){
		return (
			<ProfileList profiles={this.state.profiles}/>
		)
		
	}
	
});
