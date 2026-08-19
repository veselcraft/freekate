.class Lcom/perm/kate/EditChatActivity$3;
.super Ljava/lang/Object;
.source "EditChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditChatActivity;->requeryOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditChatActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditChatActivity;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$3;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$3;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$400(Lcom/perm/kate/EditChatActivity;)V

    return-void
.end method
