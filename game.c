#define SDL_MAIN_HANDLED
#include "SDL2-2.30.7/x86_64-w64-mingw32/include/SDL2/SDL.h" 
int main() {

	SDL_Init(SDL_INIT_EVERYTHING); 
	SDL_Window* window = SDL_CreateWindow("Win32", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 800, 600, 0);
	SDL_Renderer* renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
	
	SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);	
	SDL_RenderClear(renderer);	

	SDL_RenderPresent(renderer);	
	SDL_Delay(1600);
}  
