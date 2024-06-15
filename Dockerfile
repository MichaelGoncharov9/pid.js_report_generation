FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    grep \
    bash
RUN pip3 install sympy
# Копируем скрипт в контейнер
COPY * /root/.
# Делаем скрипт исполняемым
RUN chmod +x /root/*.sh \
    && chmod +x /root/functions/*.sh \
    && chmod +x /root/print_form/*.sh \
    && chmod +x /root/teile/*.sh# Устанавливаем рабочую директорию
WORKDIR /root/
# Команда по умолчанию для запуска скрипта
CMD ["bash", "/roor/main.sh"]