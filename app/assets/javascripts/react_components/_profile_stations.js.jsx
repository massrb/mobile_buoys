
var ProfileStations = React.createClass({
	getInitialState: function () {
		console.log('in react plist');
    return JSON.parse(this.props.prof);
  },
  
	render: function(){
		return (
			<StationList stations={this.state.stations}/>
		)
		
	}
	
});