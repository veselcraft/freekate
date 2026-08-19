.class Lcom/perm/kate/NewMarketActivity$9;
.super Ljava/lang/Thread;
.source "NewMarketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewMarketActivity;->editMarket()V
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

    .line 240
    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity$9;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 243
    iget-object v1, v0, Lcom/perm/kate/NewMarketActivity$9;->this$0:Lcom/perm/kate/NewMarketActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 244
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/NewMarketActivity$9;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMarketActivity;->access$700(Lcom/perm/kate/NewMarketActivity;)J

    move-result-wide v1

    neg-long v4, v1

    iget-object v1, v0, Lcom/perm/kate/NewMarketActivity$9;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMarketActivity;->access$1600(Lcom/perm/kate/NewMarketActivity;)Lcom/perm/kate/api/MarketItem;

    move-result-object v1

    iget-wide v6, v1, Lcom/perm/kate/api/MarketItem;->id:J

    iget-object v1, v0, Lcom/perm/kate/NewMarketActivity$9;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMarketActivity;->access$800(Lcom/perm/kate/NewMarketActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/perm/kate/NewMarketActivity$9;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMarketActivity;->access$900(Lcom/perm/kate/NewMarketActivity;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/perm/kate/NewMarketActivity$9;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMarketActivity;->access$1000(Lcom/perm/kate/NewMarketActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v1, v0, Lcom/perm/kate/NewMarketActivity$9;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMarketActivity;->access$1100(Lcom/perm/kate/NewMarketActivity;)Ljava/lang/Long;

    move-result-object v12

    iget-object v1, v0, Lcom/perm/kate/NewMarketActivity$9;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMarketActivity;->access$1200(Lcom/perm/kate/NewMarketActivity;)Ljava/lang/Double;

    move-result-object v13

    iget-object v1, v0, Lcom/perm/kate/NewMarketActivity$9;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMarketActivity;->access$1300(Lcom/perm/kate/NewMarketActivity;)Ljava/util/ArrayList;

    move-result-object v14

    iget-object v1, v0, Lcom/perm/kate/NewMarketActivity$9;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {v1}, Lcom/perm/kate/NewMarketActivity;->access$1700(Lcom/perm/kate/NewMarketActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v15

    iget-object v1, v0, Lcom/perm/kate/NewMarketActivity$9;->this$0:Lcom/perm/kate/NewMarketActivity;

    move-object/from16 v16, v1

    invoke-virtual/range {v3 .. v16}, Lcom/perm/kate/session/Session;->editMarket(JJLjava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Double;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 245
    iget-object v1, v0, Lcom/perm/kate/NewMarketActivity$9;->this$0:Lcom/perm/kate/NewMarketActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
