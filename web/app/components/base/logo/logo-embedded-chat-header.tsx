import type { FC } from 'react'
import logo from '@/public/logo/logo-embedded-chat-header.png'

type LogoEmbeddedChatHeaderProps = {
  className?: string;
}

const LogoEmbeddedChatHeader: FC<LogoEmbeddedChatHeaderProps> = ({
  className,
}) => {
  return (
    <img
      src={logo.src}
      className={`block w-auto h-6 ${className}`}
      alt="logo"
    />
  )
}

export default LogoEmbeddedChatHeader
