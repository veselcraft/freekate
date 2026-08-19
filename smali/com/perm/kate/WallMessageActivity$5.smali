.class Lcom/perm/kate/WallMessageActivity$5;
.super Ljava/lang/Object;
.source "WallMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$5;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 466
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$5;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object p1, p1, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, p1, Lcom/perm/kate/NewsItemTag;->copy_owner_user:Lcom/perm/kate/api/User;

    if-eqz v0, :cond_0

    .line 467
    iget-wide v0, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$5;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->copy_owner_group:Lcom/perm/kate/api/Group;

    if-eqz p1, :cond_1

    .line 469
    iget-wide v0, p1, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$5;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/NewsCursorAdapter;->ShowGroup(Ljava/lang/Long;Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method
