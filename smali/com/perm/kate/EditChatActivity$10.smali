.class Lcom/perm/kate/EditChatActivity$10;
.super Ljava/lang/Thread;
.source "EditChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditChatActivity;->chatEdit()V
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
    .param p1, "this$0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$10;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 281
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$10;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$200(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$10;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$800(Lcom/perm/kate/EditChatActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$10;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$1100(Lcom/perm/kate/EditChatActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/EditChatActivity$10;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/session/Session;->chatEdit(JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 282
    return-void
.end method
