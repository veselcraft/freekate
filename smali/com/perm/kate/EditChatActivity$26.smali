.class Lcom/perm/kate/EditChatActivity$26;
.super Ljava/lang/Object;
.source "EditChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditChatActivity;->copyInviteLink(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditChatActivity;

.field final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditChatActivity;Ljava/lang/String;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$26;->this$0:Lcom/perm/kate/EditChatActivity;

    iput-object p2, p0, Lcom/perm/kate/EditChatActivity$26;->val$link:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$26;->val$link:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/EditChatActivity$26;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
