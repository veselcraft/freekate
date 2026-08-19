.class Lcom/perm/kate/EditChatActivity$25;
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

    .line 546
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$25;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 549
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$25;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/EditChatActivity;->access$2900(Lcom/perm/kate/EditChatActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
