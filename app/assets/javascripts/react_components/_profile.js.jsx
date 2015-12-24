var Profile = React.createClass({
	handleClick: function() {
		console.log("click", this.props.id);
		window.location = "/prof-id/" + this.props.id.toString();
	},
	render: function(){
		return(
		<div>
		  <h4 onClick={this.handleClick}>{this.props.name}</h4>
		</div>
		)
	}
	
});
