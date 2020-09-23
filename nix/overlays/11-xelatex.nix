self: super: {
  xelatex = super.texlive.combine {
    inherit (super) noweb;
    inherit (super.texlive) scheme-small
      braket
      catchfile
      datetime
      # dirtytalk
      ebproof
      framed
      fvextra
      # glossaries
      # glossaries-extra
      ifplatform
      latexmk
      minted
      # titlesec
      # tkz-base
      # todonotes
      xetex
      # xindy
      # xfor
      xstring
      ;
  };
}
