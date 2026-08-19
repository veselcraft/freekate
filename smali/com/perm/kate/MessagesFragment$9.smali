.class Lcom/perm/kate/MessagesFragment$9;
.super Lcom/perm/kate/session/Callback;
.source "MessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment;Landroid/app/Activity;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$9;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 353
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 354
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$9;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/MessagesFragment;->access$402(Lcom/perm/kate/MessagesFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 9

    .line 337
    check-cast p1, Ljava/util/ArrayList;

    .line 339
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 340
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$9;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-wide v2, v1, Lcom/perm/kate/MessagesFragment;->account_id:J

    iget-wide v5, v1, Lcom/perm/kate/MessagesFragment;->group_id:J

    const/4 v4, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessages(Ljava/util/ArrayList;JZJ)Z

    const-string v0, "mf_createOrUpdateMessages"

    .line 341
    invoke-static {v7, v8, v0}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 343
    invoke-static {p1}, Lcom/perm/kate/MessagesFragment;->getUsers(Ljava/util/ArrayList;)V

    .line 345
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$9;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/MessagesFragment;->access$500(Lcom/perm/kate/MessagesFragment;Ljava/util/ArrayList;)V

    .line 346
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$9;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {p1}, Lcom/perm/kate/MessagesFragment;->access$600(Lcom/perm/kate/MessagesFragment;)V

    .line 348
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$9;->this$0:Lcom/perm/kate/MessagesFragment;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/perm/kate/MessagesFragment;->access$402(Lcom/perm/kate/MessagesFragment;I)I

    return-void
.end method
