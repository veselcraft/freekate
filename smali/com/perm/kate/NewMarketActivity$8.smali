.class Lcom/perm/kate/NewMarketActivity$8;
.super Lcom/perm/kate/session/Callback;
.source "NewMarketActivity.java"


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
.method constructor <init>(Lcom/perm/kate/NewMarketActivity;Landroid/app/Activity;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity$8;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/perm/kate/NewMarketActivity$8;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMarketActivity;->access$1500(Lcom/perm/kate/NewMarketActivity;)V

    :cond_0
    return-void
.end method
