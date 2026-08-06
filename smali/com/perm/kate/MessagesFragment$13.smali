.class final Lcom/perm/kate/MessagesFragment$13;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessagesFragment;->deleteThread(JJJLcom/perm/kate/MessagesFragment$DeleteCallback;Landroid/app/Activity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
    .locals 1

    .prologue
    .line 544
    iput-wide p1, p0, Lcom/perm/kate/MessagesFragment$13;->val$message_uid:J

    iput-wide p3, p0, Lcom/perm/kate/MessagesFragment$13;->val$chat_id:J

    iput-wide p5, p0, Lcom/perm/kate/MessagesFragment$13;->val$account_id:J

    iput-wide p7, p0, Lcom/perm/kate/MessagesFragment$13;->val$group_id:J

    iput-object p9, p0, Lcom/perm/kate/MessagesFragment$13;->val$callback:Lcom/perm/kate/MessagesFragment$DeleteCallback;

    iput-object p10, p0, Lcom/perm/kate/MessagesFragment$13;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 547
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/MessagesFragment$13;->val$message_uid:J

    iget-wide v4, p0, Lcom/perm/kate/MessagesFragment$13;->val$chat_id:J

    iget-wide v6, p0, Lcom/perm/kate/MessagesFragment$13;->val$account_id:J

    iget-wide v8, p0, Lcom/perm/kate/MessagesFragment$13;->val$group_id:J

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->deleteMessageThread(JJJJ)V

    .line 548
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$13;->val$callback:Lcom/perm/kate/MessagesFragment$DeleteCallback;

    invoke-interface {v0}, Lcom/perm/kate/MessagesFragment$DeleteCallback;->deleted()V

    .line 549
    new-instance v0, Lcom/perm/kate/MessagesFragment$13$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$13$1;-><init>(Lcom/perm/kate/MessagesFragment$13;)V

    .line 559
    invoke-virtual {v0}, Lcom/perm/kate/MessagesFragment$13$1;->start()V

    .line 560
    return-void
.end method
