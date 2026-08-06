.class Lcom/perm/kate/NewsCommentsFragment$3;
.super Ljava/lang/Object;
.source "NewsCommentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsCommentsFragment;->requeryOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCommentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCommentsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsCommentsFragment;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/perm/kate/NewsCommentsFragment$3;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$3;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-object v0, v0, Lcom/perm/kate/NewsCommentsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$3;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-object v0, v0, Lcom/perm/kate/NewsCommentsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 113
    :cond_0
    return-void
.end method
