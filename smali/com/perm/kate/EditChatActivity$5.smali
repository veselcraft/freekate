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

    .line 247
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$5;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 9

    .line 250
    check-cast p1, Lcom/perm/kate/api/Chat;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity$5;->this$0:Lcom/perm/kate/EditChatActivity;

    iget-object v2, p1, Lcom/perm/kate/api/Chat;->photo_100:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/perm/kate/EditChatActivity;->access$702(Lcom/perm/kate/EditChatActivity;Z)Z

    .line 253
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/EditChatActivity$5;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v1}, Lcom/perm/kate/EditChatActivity;->access$200(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v4

    iget-object v6, p1, Lcom/perm/kate/api/Chat;->photo_100:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/EditChatActivity$5;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v1}, Lcom/perm/kate/EditChatActivity;->access$100(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/perm/kate/db/DataHelper;->updateChatPhoto(JLjava/lang/String;J)V

    .line 254
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity$5;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v1}, Lcom/perm/kate/EditChatActivity;->access$100(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v2

    iget-object v4, p1, Lcom/perm/kate/api/Chat;->admin_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/perm/kate/EditChatActivity;->access$802(Lcom/perm/kate/EditChatActivity;Z)Z

    .line 256
    :cond_1
    iget-object v1, p1, Lcom/perm/kate/api/Chat;->left:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_3

    :cond_2
    iget-object p1, p1, Lcom/perm/kate/api/Chat;->kicked:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 257
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$5;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/EditChatActivity;->access$900(Lcom/perm/kate/EditChatActivity;Z)V

    :cond_4
    return-void
.end method
