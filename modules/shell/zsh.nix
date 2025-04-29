{ ... }:
{
  config = {
    programs.zsh.enable = true;

    home-manager.users.efzr = {
      programs.zsh = {
        enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;

        history = {
          expireDuplicatesFirst = true;
        };

        oh-my-zsh = {
          enable = true;
          theme = "robbyrussell";
          plugins = [
            "git"
            "colored-man-pages"
            "zsh-interactive-cd"
            "history"
            "history-substring-search"
            "docker"
          ];
        };

        sessionVariables = {
          DEFAULT_USER = "efzr";
        };

        shellAliases = {
          home = "cd ~/";
          gcl = "git clone";
          cat = "bat --paging=never";
          ls = "eza --icons --group-directories-first";
          man = "tldr";
          ll = "eza --icons --group-directories-first -lah";
          grep = "rg";
          parrot = "curl parrot.live";
          update = "nixos-rebuild switch";
          lg = "lazygit";

          # Directory traversal
          ".." = "cd ..";
          "..." = "cd ../..";
          "...." = "cd ../../..";
          "....." = "cd ../../../..";
          "......" = "cd ../../../../..";

          ## Neovim aliases
          nvim = "nvim";
          vim = "nvim";
          vi = "nvim";
          v = "nvim";

          ## Git aliases
          "git log" = "git log --graph --all --decorate";

          ## Nix aliases
          nix-shell = "nix-shell --command zsh";

          # Kubernetes aliases
          k = "kubectl";
          ka = "kubectl apply -f";
          kak = "kubectl apply -k";
          kg = "kubectl get";
          kd = "kubectl describe";
          kdel = "kubectl delete";
          kl = "kubectl logs";
          kgp = "kubectl get pods";
          kgd = "kubectl get deployments";
          ke = "kubectl exec -it";
          kcsns = "kubectl config set-context --current --namespace";

          # Docker aliases
          d = "docker";
          dps = "docker ps";
          dpsa = "docker ps -a";
          di = "docker images";
          ds = "docker stop";
          drm = "docker rm";
          docker = "docker";
        };
      };
    };
  };
}
