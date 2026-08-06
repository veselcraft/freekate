.class Lcom/perm/kate/SettingsPaint$6;
.super Ljava/lang/Object;
.source "SettingsPaint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SettingsPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SettingsPaint;


# direct methods
.method constructor <init>(Lcom/perm/kate/SettingsPaint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SettingsPaint;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {v0}, Lcom/perm/kate/SettingsPaint;->access$600(Lcom/perm/kate/SettingsPaint;)I

    move-result v0

    sput v0, Lcom/perm/kate/PaintActivity;->brushColor:I

    .line 187
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {v0}, Lcom/perm/kate/SettingsPaint;->access$100(Lcom/perm/kate/SettingsPaint;)I

    move-result v0

    sput v0, Lcom/perm/kate/PaintActivity;->brushSize:I

    .line 188
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {v0}, Lcom/perm/kate/SettingsPaint;->access$300(Lcom/perm/kate/SettingsPaint;)I

    move-result v0

    sput v0, Lcom/perm/kate/PaintActivity;->brushOpacity:I

    .line 189
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {v0}, Lcom/perm/kate/SettingsPaint;->access$400(Lcom/perm/kate/SettingsPaint;)I

    move-result v0

    sput v0, Lcom/perm/kate/PaintActivity;->brushBlur:I

    .line 190
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {v0}, Lcom/perm/kate/SettingsPaint;->access$500(Lcom/perm/kate/SettingsPaint;)Z

    move-result v0

    sput-boolean v0, Lcom/perm/kate/PaintActivity;->enableEmboss:Z

    .line 191
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/SettingsPaint;->setResult(I)V

    .line 192
    iget-object v0, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-virtual {v0}, Lcom/perm/kate/SettingsPaint;->finish()V

    .line 193
    return-void
.end method
