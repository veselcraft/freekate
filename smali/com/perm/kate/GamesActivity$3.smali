.class Lcom/perm/kate/GamesActivity$3;
.super Ljava/lang/Object;
.source "GamesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GamesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GamesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GamesActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/perm/kate/GamesActivity$3;->this$0:Lcom/perm/kate/GamesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 84
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 86
    iget-object p2, p0, Lcom/perm/kate/GamesActivity$3;->this$0:Lcom/perm/kate/GamesActivity;

    invoke-static {p2, p1}, Lcom/perm/kate/GamesActivity;->access$400(Lcom/perm/kate/GamesActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
