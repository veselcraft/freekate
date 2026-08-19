.class Lcom/perm/kate/MessagesFragment$15;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessagesFragment;->deleteThread(JJJLcom/perm/kate/MessagesFragment$DeleteCallback;Landroid/app/Activity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$account_id:J

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/perm/kate/MessagesFragment$DeleteCallback;

.field final synthetic val$chat_id:J

.field final synthetic val$group_id:J

.field final synthetic val$message_uid:J


# direct methods
.method constructor <init>(JJJJLcom/perm/kate/MessagesFragment$DeleteCallback;Landroid/app/Activity;)V
    .locals 0

    .line 677
    iput-wide p1, p0, Lcom/perm/kate/MessagesFragment$15;->val$message_uid:J

    iput-wide p3, p0, Lcom/perm/kate/MessagesFragment$15;->val$chat_id:J

    iput-wide p5, p0, Lcom/perm/kate/MessagesFragment$15;->val$account_id:J

    iput-wide p7, p0, Lcom/perm/kate/MessagesFragment$15;->val$group_id:J

    iput-object p9, p0, Lcom/perm/kate/MessagesFragment$15;->val$callback:Lcom/perm/kate/MessagesFragment$DeleteCallback;

    iput-object p10, p0, Lcom/perm/kate/MessagesFragment$15;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 680
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/MessagesFragment$15;->val$message_uid:J

    iget-wide v3, p0, Lcom/perm/kate/MessagesFragment$15;->val$chat_id:J

    iget-wide v5, p0, Lcom/perm/kate/MessagesFragment$15;->val$account_id:J

    iget-wide v7, p0, Lcom/perm/kate/MessagesFragment$15;->val$group_id:J

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/db/DataHelper;->deleteMessageThread(JJJJ)V

    .line 681
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$15;->val$callback:Lcom/perm/kate/MessagesFragment$DeleteCallback;

    invoke-interface {p1}, Lcom/perm/kate/MessagesFragment$DeleteCallback;->deleted()V

    .line 682
    new-instance p1, Lcom/perm/kate/MessagesFragment$15$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/MessagesFragment$15$1;-><init>(Lcom/perm/kate/MessagesFragment$15;)V

    .line 692
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
