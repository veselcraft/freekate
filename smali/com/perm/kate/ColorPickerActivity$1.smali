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
    .param p1, "this$0"    # Lcom/perm/kate/ColorPickerActivity;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/perm/kate/ColorPickerActivity$1;->this$0:Lcom/perm/kate/ColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 42
    .local v0, "color":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/perm/kate/ColorPickerActivity$1;->this$0:Lcom/perm/kate/ColorPickerActivity;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/perm/kate/ColorPickerActivity;->access$000(Lcom/perm/kate/ColorPickerActivity;I)V

    .line 44
    :cond_0
    return-void
.end method
