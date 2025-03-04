'use client'
import type { FC } from 'react'
import classNames from '@/utils/classnames'
import logo from '@/public/logo/logo.png'
type LogoSiteProps = {
  className?: string;
}

const LogoSite: FC<LogoSiteProps> = ({ className }) => {
  return (
    <img
      src={logo.src}
      className={classNames('block w-[22.651px] h-[24.5px]', className)}
      alt="logo"
    />
  )
}

export default LogoSite
