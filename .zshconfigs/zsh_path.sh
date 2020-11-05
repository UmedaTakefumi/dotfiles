If you need to have libiconv first in your PATH run:
  echo 'export PATH="/usr/local/opt/libiconv/bin:$PATH"' >> ~/.zshrc

For compilers to find libiconv you may need to set:
  export LDFLAGS="-L/usr/local/opt/libiconv/lib"
  export CPPFLAGS="-I/usr/local/opt/libiconv/include"
