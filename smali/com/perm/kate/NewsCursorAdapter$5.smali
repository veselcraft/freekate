.class Lcom/perm/kate/NewsCursorAdapter$5;
.super Ljava/lang/Object;
.source "NewsCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCursorAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCursorAdapter;)V
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$5;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const v0, 0x7f09040c

    .line 906
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f09040d

    .line 907
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 908
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/NewsItemTag;

    .line 909
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter$5;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    iget-object v8, v0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-boolean v9, p1, Lcom/perm/kate/NewsItemTag;->comment_can_post:Z

    const/4 v4, 0x1

    invoke-static/range {v4 .. v9}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;Z)V

    return-void
.end method
