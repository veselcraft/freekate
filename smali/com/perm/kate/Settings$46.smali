.class Lcom/perm/kate/Settings$46;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/perm/kate/color_picker/widget/ColorPickerPreference$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Settings;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings;)V
    .locals 0

    .line 1287
    iput-object p1, p0, Lcom/perm/kate/Settings$46;->this$0:Lcom/perm/kate/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1

    .line 1290
    iget-object p1, p0, Lcom/perm/kate/Settings$46;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/Settings;->access$2000(Lcom/perm/kate/Settings;)V

    .line 1291
    iget-object p1, p0, Lcom/perm/kate/Settings$46;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/theme/ThemeSettingsHelper;->getIsCustomTheme(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    .line 1292
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 1293
    invoke-static {}, Lcom/perm/utils/TaskDescriptionWrapper;->resetTaskDescription()V

    .line 1294
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/Settings$46;->this$0:Lcom/perm/kate/Settings;

    invoke-static {p1}, Lcom/perm/kate/Settings;->access$700(Lcom/perm/kate/Settings;)V

    return-void
.end method
