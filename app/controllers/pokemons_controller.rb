class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def new
    @trainer = current_trainer
    @pokemon = Pokemon.new
  end

  def capture
    @pokemon = Pokemon.find(params[:id])
    @trainer = current_trainer
    if @trainer
      @pokemon.trainer_id = @trainer.id
    end
    @pokemon.save
    redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health = @pokemon.health - 10

    if @pokemon.health <= 0
      @pokemon.destroy
    else
      @pokemon.save
    end

    redirect_to trainer_path(current_trainer.id)
  end

  def output
    params.require(:pokemon).permit(:name)
  end

  def create
    @pokemon = Pokemon.new(output)
    @pokemon.health = 100
    @pokemon.level = 1
    @pokemon.trainer_id = current_trainer.id
    if @pokemon.save
      @pokemon.save
      redirect_to current_trainer
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to new_pokemon_path
    end
  end

end