#!/usr/bin/env fish
function c4_backup
    from=$argv[1]
    to=$argv[2]
    rsync -ralvPze ssh \
         --include="*/" --include="*.sh" --include="*.py" \
         --include="*.bak" --include="*.log" --include="*DCT" --include="*DIPDER" \
         --include="*DIPOL" --include="*DIPOL0" --include="*Displacement_*" \
         --include="*EFG" --include="*EXIT" --include="*FCM" --include="*FCM000" \
         --include="*FCMFINAL" --include="*FCMINT" --include="*FILES" \
         --include="*FJOBARC" --include="*FRQARC" --include="*ECPDATA" \
         --include="*GENBAS" --include="*GRD" --include="*GRDINT" \
         --include="*JAINDX" --include="*JMOLplot" --include="*JOBARC" \
         --include="*JODADONE" --include="*MOL" --include="*basinfo.data" \
         --include="*MOLDEN" --include="*MOLDEN_NAT" --include="*NEWMOS" \
         --include="*NORMCO" --include="*OPTARC" --include="*OUT" \
         --include="*POLAR" --include="*POLARSCF" --include="*QUADRATURE" \
         --include="*RESLEV" --include="*THETA" --include="*TIMING" \
         --include="*ZMAT" --include="*ZMATnew" --include="*ZMATtemp" \
         --include="*coriolis" --include="*corioliszeta" --include="*.tar*"\
         --include="*cubic" --include="*dct0" --include="*den.dat"  \
         --include="*dipolex" --include="*dipoley" --include="*dipolez" \
         --include="*iface" --include="*quadratic" --include="*quartic" \
         --include="*rota" --include="*zmat*" --include="*.xyz" \
         --exclude="*" "$from" "$to";
end