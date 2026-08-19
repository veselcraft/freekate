.class Lcom/perm/kate/NewMarketActivity$1;
.super Ljava/lang/Thread;
.source "NewMarketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewMarketActivity;->getMarketCategories()V
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

    .line 105
    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity$1;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity$1;->this$0:Lcom/perm/kate/NewMarketActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 109
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/NewMarketActivity$1;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMarketActivity;->access$000(Lcom/perm/kate/NewMarketActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewMarketActivity$1;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->getMarketCategories(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 110
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity$1;->this$0:Lcom/perm/kate/NewMarketActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
