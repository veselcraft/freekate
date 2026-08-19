.class Lcom/perm/kate/NewMarketActivity$5;
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

    .line 162
    iput-object p1, p0, Lcom/perm/kate/NewMarketActivity$5;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/perm/kate/NewMarketActivity$5;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMarketActivity;->access$400(Lcom/perm/kate/NewMarketActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/perm/kate/NewMarketActivity$5;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMarketActivity;->access$500(Lcom/perm/kate/NewMarketActivity;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NewMarketActivity$5;->this$0:Lcom/perm/kate/NewMarketActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMarketActivity;->access$600(Lcom/perm/kate/NewMarketActivity;)V

    :goto_0
    return-void
.end method
