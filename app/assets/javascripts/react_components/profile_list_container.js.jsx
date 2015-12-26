

var ProfileListContainer = React.createClass({
	getInitialState: function () {
        return JSON.parse(this.props.prof);
  },
  
	render: function(){
		return (
			<ProfileList profiles={this.state.profiles}/>
		)
		
	}
	
});
