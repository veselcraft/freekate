.class Lcom/perm/kate/WallMessageActivity$7;
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

    .line 485
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$7;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 488
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$7;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, p1, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v0, v0, Lcom/perm/kate/api/WallMessage;->copyright_link:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
