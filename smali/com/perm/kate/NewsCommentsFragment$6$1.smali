.class Lcom/perm/kate/NewsCommentsFragment$6$1;
.super Ljava/lang/Object;
.source "NewsCommentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsCommentsFragment$6;->requeryOnUiThread(Landroid/app/Activity;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCommentsFragment$6;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCommentsFragment$6;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsCommentsFragment$6;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/perm/kate/NewsCommentsFragment$6$1;->this$0:Lcom/perm/kate/NewsCommentsFragment$6;

    iput-object p2, p0, Lcom/perm/kate/NewsCommentsFragment$6$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$6$1;->val$cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$6$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 329
    :cond_0
    return-void
.end method
