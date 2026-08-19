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

    .line 335
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$11;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$11;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$1500(Lcom/perm/kate/EditChatActivity;)V

    .line 347
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7

    .line 338
    check-cast p1, Ljava/lang/Integer;

    .line 339
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 340
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$11;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1}, Lcom/perm/kate/EditChatActivity;->access$200(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$11;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1}, Lcom/perm/kate/EditChatActivity;->access$1100(Lcom/perm/kate/EditChatActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$11;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1}, Lcom/perm/kate/EditChatActivity;->access$100(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->updateChatTitle(JLjava/lang/String;J)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$11;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1}, Lcom/perm/kate/EditChatActivity;->access$1500(Lcom/perm/kate/EditChatActivity;)V

    :goto_0
    return-void
.end method
