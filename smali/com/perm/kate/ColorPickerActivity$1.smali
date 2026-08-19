.class Lcom/perm/kate/ColorPickerActivity$1;
.super Ljava/lang/Object;
.source "ColorPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ColorPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ColorPickerActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/ColorPickerActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/perm/kate/ColorPickerActivity$1;->this$0:Lcom/perm/kate/ColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 43
    iget-object p2, p0, Lcom/perm/kate/ColorPickerActivity$1;->this$0:Lcom/perm/kate/ColorPickerActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Lcom/perm/kate/ColorPickerActivity;->access$000(Lcom/perm/kate/ColorPickerActivity;I)V

    :cond_0
    return-void
.end method
