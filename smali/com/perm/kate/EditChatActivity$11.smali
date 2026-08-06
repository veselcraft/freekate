.class Lcom/perm/kate/EditChatActivity$11;
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
    .line 286
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$11;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$11;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$1200(Lcom/perm/kate/EditChatActivity;)V

    .line 298
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 299
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 289
    move-object v6, p1

    check-cast v6, Ljava/lang/Integer;

    .line 290
    .local v6, "res":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 291
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/EditChatActivity$11;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v1}, Lcom/perm/kate/EditChatActivity;->access$200(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/EditChatActivity$11;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v3}, Lcom/perm/kate/EditChatActivity;->access$800(Lcom/perm/kate/EditChatActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/EditChatActivity$11;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v4}, Lcom/perm/kate/EditChatActivity;->access$100(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->updateChatTitle(JLjava/lang/String;J)V

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$11;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$1200(Lcom/perm/kate/EditChatActivity;)V

    goto :goto_0
.end method
