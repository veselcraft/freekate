.class Lcom/perm/kate/NewsCursorAdapter$3;
.super Ljava/lang/Object;
.source "NewsCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewsCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCursorAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCursorAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsCursorAdapter;

    .prologue
    .line 785
    iput-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$3;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 788
    const v3, 0x7f0e0231

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 789
    .local v1, "_id":Ljava/lang/String;
    const v3, 0x7f0e0237

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 790
    .local v2, "_owner_id":Ljava/lang/String;
    const v3, 0x7f0e023a

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 791
    .local v0, "user_like":Z
    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/perm/kate/NewsCursorAdapter$3;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    iget-object v4, v4, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v5, p0, Lcom/perm/kate/NewsCursorAdapter$3;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    invoke-virtual {v5}, Lcom/perm/kate/NewsCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/NewsCursorAdapter$3;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    iget-wide v6, v6, Lcom/perm/kate/NewsCursorAdapter;->account_id:J

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/NewsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;J)V

    .line 792
    return-void

    .line 791
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
