.class Lcom/perm/kate/NewsCursorAdapter$7$1;
.super Ljava/lang/Object;
.source "NewsCursorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewsCursorAdapter$7;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCursorAdapter$7;)V
    .locals 0

    .line 926
    iput-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$7$1;->this$1:Lcom/perm/kate/NewsCursorAdapter$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter$7$1;->this$1:Lcom/perm/kate/NewsCursorAdapter$7;

    iget-object v0, v0, Lcom/perm/kate/NewsCursorAdapter$7;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter$7$1;->this$1:Lcom/perm/kate/NewsCursorAdapter$7;

    iget-object v0, v0, Lcom/perm/kate/NewsCursorAdapter$7;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method
