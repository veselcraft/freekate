.class Lcom/perm/kate/NewMarketActivity$7;
.super Ljava/lang/Thread;
.source "NewMarketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewMarketActivity;->createMarket()V
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

    .line 183
    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity$7;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 186
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity$7;->this$0:Lcom/perm/kate/NewMarketActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 187
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity$7;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketActivity;->access$700(Lcom/perm/kate/NewMarketActivity;)J

    move-result-wide v0

    neg-long v3, v0

    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity$7;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketActivity;->access$800(Lcom/perm/kate/NewMarketActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity$7;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketActivity;->access$900(Lcom/perm/kate/NewMarketActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity$7;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketActivity;->access$1000(Lcom/perm/kate/NewMarketActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity$7;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketActivity;->access$1100(Lcom/perm/kate/NewMarketActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity$7;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketActivity;->access$1200(Lcom/perm/kate/NewMarketActivity;)Ljava/lang/Double;

    move-result-object v11

    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity$7;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketActivity;->access$1300(Lcom/perm/kate/NewMarketActivity;)Ljava/util/ArrayList;

    move-result-object v12

    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity$7;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMarketActivity;->access$1400(Lcom/perm/kate/NewMarketActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v13

    iget-object v14, p0, Lcom/perm/kate/NewMarketActivity$7;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-virtual/range {v2 .. v14}, Lcom/perm/kate/session/Session;->addMarket(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/Double;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 188
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity$7;->this$0:Lcom/perm/kate/NewMarketActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
