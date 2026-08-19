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

    .line 184
    iput-object p1, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {p1}, Lcom/perm/kate/SettingsPaint;->access$600(Lcom/perm/kate/SettingsPaint;)I

    move-result p1

    sput p1, Lcom/perm/kate/PaintActivity;->brushColor:I

    .line 188
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {p1}, Lcom/perm/kate/SettingsPaint;->access$100(Lcom/perm/kate/SettingsPaint;)I

    move-result p1

    sput p1, Lcom/perm/kate/PaintActivity;->brushSize:I

    .line 189
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {p1}, Lcom/perm/kate/SettingsPaint;->access$300(Lcom/perm/kate/SettingsPaint;)I

    move-result p1

    sput p1, Lcom/perm/kate/PaintActivity;->brushOpacity:I

    .line 190
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {p1}, Lcom/perm/kate/SettingsPaint;->access$400(Lcom/perm/kate/SettingsPaint;)I

    move-result p1

    sput p1, Lcom/perm/kate/PaintActivity;->brushBlur:I

    .line 191
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-static {p1}, Lcom/perm/kate/SettingsPaint;->access$500(Lcom/perm/kate/SettingsPaint;)Z

    move-result p1

    sput-boolean p1, Lcom/perm/kate/PaintActivity;->enableEmboss:Z

    .line 192
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 193
    iget-object p1, p0, Lcom/perm/kate/SettingsPaint$6;->this$0:Lcom/perm/kate/SettingsPaint;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
