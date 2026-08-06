.class Lcom/perm/kate/EditChatActivity$5;
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
    .param p1, "this$0"    # Lcom/perm/kate/EditChatActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$5;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 213
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 205
    move-object v6, p1

    check-cast v6, Lcom/perm/kate/api/Chat;

    .line 206
    .local v6, "chat":Lcom/perm/kate/api/Chat;
    if-eqz v6, :cond_0

    .line 207
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$5;->this$0:Lcom/perm/kate/EditChatActivity;

    iget-object v1, v6, Lcom/perm/kate/api/Chat;->photo_100:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/perm/kate/EditChatActivity;->access$602(Lcom/perm/kate/EditChatActivity;Z)Z

    .line 208
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/EditChatActivity$5;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v1}, Lcom/perm/kate/EditChatActivity;->access$200(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v1

    iget-object v3, v6, Lcom/perm/kate/api/Chat;->photo_100:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/EditChatActivity$5;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v4}, Lcom/perm/kate/EditChatActivity;->access$100(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->updateChatPhoto(JLjava/lang/String;J)V

    .line 210
    :cond_0
    return-void
.end method
