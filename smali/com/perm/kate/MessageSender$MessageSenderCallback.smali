.class public interface abstract Lcom/perm/kate/MessageSender$MessageSenderCallback;
.super Ljava/lang/Object;
.source "MessageSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageSenderCallback"
.end annotation


# virtual methods
.method public abstract error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end method

.method public abstract ready()V
.end method

.method public abstract refreshed()V
.end method

.method public abstract start()V
.end method
