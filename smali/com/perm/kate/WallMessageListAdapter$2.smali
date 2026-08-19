.class Lcom/perm/kate/WallMessageListAdapter$2;
.super Ljava/lang/Object;
.source "WallMessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageListAdapter;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/perm/kate/WallMessageListAdapter$2;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f09040c

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const v0, 0x7f09040d

    .line 333
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const v0, 0x7f09040e

    .line 334
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 v3, p1, 0x1

    .line 335
    iget-object p1, p0, Lcom/perm/kate/WallMessageListAdapter$2;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    invoke-static {p1}, Lcom/perm/kate/WallMessageListAdapter;->access$000(Lcom/perm/kate/WallMessageListAdapter;)Lcom/perm/kate/BaseActivity;

    move-result-object v4

    iget-object p1, p0, Lcom/perm/kate/WallMessageListAdapter$2;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    invoke-virtual {p1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    iget-object p1, p0, Lcom/perm/kate/WallMessageListAdapter$2;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    iget-wide v6, p1, Lcom/perm/kate/WallMessageListAdapter;->account_id:J

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/perm/kate/NewsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;JZ)V

    return-void
.end method
