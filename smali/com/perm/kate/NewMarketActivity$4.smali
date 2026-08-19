.class Lcom/perm/kate/NewMarketActivity$4;
.super Ljava/lang/Object;
.source "NewMarketActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewMarketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMarketActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMarketActivity;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity$4;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 157
    iget-object p1, p0, Lcom/perm/kate/NewMarketActivity$4;->this$0:Lcom/perm/kate/NewMarketActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/perm/kate/NewMarketActivity;->access$302(Lcom/perm/kate/NewMarketActivity;Z)Z

    .line 158
    iget-object v1, p0, Lcom/perm/kate/NewMarketActivity$4;->this$0:Lcom/perm/kate/NewMarketActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZZZLjava/lang/Long;)V

    return-void
.end method
