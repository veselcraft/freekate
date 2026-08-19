.class Lcom/perm/kate/NewMarketActivity$2;
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

    .line 115
    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity$2;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/perm/kate/NewMarketActivity$2;->this$0:Lcom/perm/kate/NewMarketActivity;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/perm/kate/NewMarketActivity;->access$102(Lcom/perm/kate/NewMarketActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 119
    iget-object p1, p0, Lcom/perm/kate/NewMarketActivity$2;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMarketActivity;->access$200(Lcom/perm/kate/NewMarketActivity;)V

    return-void
.end method
