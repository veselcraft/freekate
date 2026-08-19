.class Lcom/perm/kate/NewsCursorAdapter$4;
.super Ljava/lang/Object;
.source "NewsCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCursorAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCursorAdapter;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$4;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f09040c

    .line 895
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const v0, 0x7f09040d

    .line 896
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const v0, 0x7f09040e

    .line 897
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v3, 0x7f09000b

    .line 898
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    xor-int/lit8 v3, v0, 0x1

    .line 899
    iget-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$4;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    iget-object v4, p1, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    iget-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$4;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    iget-wide v6, p1, Lcom/perm/kate/NewsCursorAdapter;->account_id:J

    invoke-static/range {v1 .. v8}, Lcom/perm/kate/NewsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;JZ)V

    return-void
.end method
