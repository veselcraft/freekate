.class Lcom/perm/kate/NewsCursorAdapter$6$1;
.super Ljava/lang/Object;
.source "NewsCursorAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsCursorAdapter$6;->success(Lcom/perm/kate/api/WallMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewsCursorAdapter$6;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCursorAdapter$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/NewsCursorAdapter$6;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$6$1;->this$1:Lcom/perm/kate/NewsCursorAdapter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter$6$1;->this$1:Lcom/perm/kate/NewsCursorAdapter$6;

    iget-object v0, v0, Lcom/perm/kate/NewsCursorAdapter$6;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/NewsCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter$6$1;->this$1:Lcom/perm/kate/NewsCursorAdapter$6;

    iget-object v0, v0, Lcom/perm/kate/NewsCursorAdapter$6;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/NewsCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 822
    :cond_0
    return-void
.end method
