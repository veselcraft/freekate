.class Lcom/perm/kate/WallMessageListAdapter$3;
.super Ljava/lang/Object;
.source "WallMessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageListAdapter;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/perm/kate/WallMessageListAdapter$3;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f09040c

    .line 342
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f09040d

    .line 343
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 344
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/perm/kate/WallMessageListAdapter$3;->this$0:Lcom/perm/kate/WallMessageListAdapter;

    invoke-static {p1}, Lcom/perm/kate/WallMessageListAdapter;->access$000(Lcom/perm/kate/WallMessageListAdapter;)Lcom/perm/kate/BaseActivity;

    move-result-object p1

    const/4 v3, 0x1

    invoke-static {v3, v0, v1, v2, p1}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    return-void
.end method
