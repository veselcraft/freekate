.class Lcom/perm/kate/EditChatActivity$14;
.super Lcom/perm/kate/session/Callback;
.source "EditChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditChatActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditChatActivity;Landroid/app/Activity;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$14;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 386
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 387
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$14;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1}, Lcom/perm/kate/EditChatActivity;->access$1800(Lcom/perm/kate/EditChatActivity;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 380
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$14;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1}, Lcom/perm/kate/EditChatActivity;->access$1800(Lcom/perm/kate/EditChatActivity;)V

    .line 382
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$14;->this$0:Lcom/perm/kate/EditChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/perm/kate/EditChatActivity;->access$900(Lcom/perm/kate/EditChatActivity;Z)V

    return-void
.end method
