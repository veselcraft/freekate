.class Lcom/perm/kate/NewsCommentsFragment$6$1;
.super Ljava/lang/Object;
.source "NewsCommentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCommentsFragment$6;Landroid/database/Cursor;)V
    .locals 0

    .line 326
    iput-object p2, p0, Lcom/perm/kate/NewsCommentsFragment$6$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$6$1;->val$cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method
