.class public L䆀/䂻/㚬/㚬;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static ಫ:Landroid/view/View;

.field public static ᆻ:J

.field public static ḓ:Ljava/lang/String;

.field public static ℓ:J

.field public static ㄏ:Z

.field public static 㧦:L䆀/䂻/㚬/㚬;

.field public static 䆀:Landroid/widget/ImageView;


# instance fields
.field public உ:Z

.field public 㚬:F

.field public 㺴:F

.field public 䂻:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "AxUPPgkODAQ="

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, L䆀/䂻/㚬/㚬;->ḓ:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, L䆀/䂻/㚬/㚬;->ᆻ:J

    sput-wide v0, L䆀/䂻/㚬/㚬;->ℓ:J

    const/4 v0, 0x0

    sput-boolean v0, L䆀/䂻/㚬/㚬;->ㄏ:Z

    const/4 v0, 0x0

    sput-object v0, L䆀/䂻/㚬/㚬;->㧦:L䆀/䂻/㚬/㚬;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, L䆀/䂻/㚬/㚬;->உ:Z

    iput-boolean v0, p0, L䆀/䂻/㚬/㚬;->䂻:Z

    return-void
.end method

.method public static உ()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AwACCikODART"

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "h/nOhPHHhsDPic/Fid71hPr/hMXGhO/kXg=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "hsDPic/FhPHvhNHniOHhhObbhNzyhOjsh9nZh+nu"

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "hsDPhM/7"

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, L䆀/䂻/㚬/㚬$உ;

    invoke-direct {v2}, L䆀/䂻/㚬/㚬$உ;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "hO73h9fp"

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static ᆻ()L䆀/䂻/㚬/㚬;
    .locals 1

    sget-object v0, L䆀/䂻/㚬/㚬;->㧦:L䆀/䂻/㚬/㚬;

    if-nez v0, :cond_0

    new-instance v0, L䆀/䂻/㚬/㚬;

    invoke-direct {v0}, L䆀/䂻/㚬/㚬;-><init>()V

    sput-object v0, L䆀/䂻/㚬/㚬;->㧦:L䆀/䂻/㚬/㚬;

    :cond_0
    sget-object v0, L䆀/䂻/㚬/㚬;->㧦:L䆀/䂻/㚬/㚬;

    return-object v0
.end method

.method public static synthetic ḓ()Landroid/view/View;
    .locals 1

    sget-object v0, L䆀/䂻/㚬/㚬;->ಫ:Landroid/view/View;

    return-object v0
.end method

.method public static ℓ()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "CQgFBCkODAQjFBUVDg8="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    new-instance v1, L䆀/䂻/㚬/㚬$㚬;

    invoke-direct {v1}, L䆀/䂻/㚬/㚬$㚬;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static 㧦()V
    .locals 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "EgkOFikODAQjFBUVDg8="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-boolean v0, L䆀/䂻/㚬/㚬;->ㄏ:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "CQANDT4DFBUVDg8="

    invoke-static {v2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DQAYDhQV"

    invoke-static {v3}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, L䆀/䂻/㚬/㚬;->ಫ:Landroid/view/View;

    sget-object v0, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    sget-object v1, L䆀/䂻/㚬/㚬;->ಫ:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, L䆀/䂻/㚬/㚬;->ಫ:Landroid/view/View;

    sget-object v1, L䆀/䂻/㚬/㚬;->ḓ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, L䆀/䂻/㚬/㚬;->䆀:Landroid/widget/ImageView;

    new-instance v1, L䆀/䂻/㚬/㚬$䂻;

    invoke-direct {v1}, L䆀/䂻/㚬/㚬$䂻;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    sput-boolean v0, L䆀/䂻/㚬/㚬;->ㄏ:Z

    :cond_0
    sget-object v0, L䆀/䂻/㚬/㚬;->ಫ:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic 㺴()Z
    .locals 1

    sget-boolean v0, L䆀/䂻/㚬/㚬;->ㄏ:Z

    return v0
.end method

.method public static synthetic 䆀()Landroid/widget/ImageView;
    .locals 1

    sget-object v0, L䆀/䂻/㚬/㚬;->䆀:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public ಫ(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    new-instance v1, L䆀/䂻/㚬/㚬$㺴;

    invoke-direct {v1, p0, p1}, L䆀/䂻/㚬/㚬$㺴;-><init>(L䆀/䂻/㚬/㚬;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ㄏ(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, L䆀/䂻/㚬/㚬;->ḓ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string v1, "TRhBXEE="

    const-string v2, "ICI1KC4vPiUuNi9NGUFcQQ=="

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-boolean p1, p0, L䆀/䂻/㚬/㚬;->உ:Z

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v1, p0, L䆀/䂻/㚬/㚬;->㚬:F

    sub-float/2addr p1, v1

    iget v1, p0, L䆀/䂻/㚬/㚬;->㺴:F

    sub-float/2addr p2, v1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ICI1KC4vPiUuNi9NBRlBXEE="

    invoke-static {v3}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "TQUYQVxB"

    invoke-static {v3}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, L䆀/䂻/㚬/㚬;->䆀:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    sget-object p1, L䆀/䂻/㚬/㚬;->䆀:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto/16 :goto_1

    :cond_2
    iput-boolean v3, p0, L䆀/䂻/㚬/㚬;->உ:Z

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "ICI1KC4vPjQx"

    invoke-static {p2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, L䆀/䂻/㚬/㚬;->ℓ:J

    sget-wide v1, L䆀/䂻/㚬/㚬;->ᆻ:J

    sub-long/2addr p1, v1

    long-to-double p1, p1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    cmpl-double v4, p1, v1

    if-lez v4, :cond_3

    iput-boolean v0, p0, L䆀/䂻/㚬/㚬;->䂻:Z

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, L䆀/䂻/㚬/㚬;->䂻:Z

    :goto_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "h+jGicDtiMDbhNvuFBE="

    invoke-static {p2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-boolean p1, p0, L䆀/䂻/㚬/㚬;->䂻:Z

    if-nez p1, :cond_5

    iput-boolean v3, p0, L䆀/䂻/㚬/㚬;->䂻:Z

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "EgQPBUECDQgCCkEEFwQPFQ=="

    invoke-static {p2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, L䆀/䂻/㚬/㚬;->உ()V

    goto/16 :goto_1

    :cond_4
    iput-boolean v0, p0, L䆀/䂻/㚬/㚬;->உ:Z

    iput-boolean v3, p0, L䆀/䂻/㚬/㚬;->䂻:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    sget-object v3, L䆀/䂻/㚬/㚬;->䆀:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v3

    sub-float/2addr p1, v3

    iput p1, p0, L䆀/䂻/㚬/㚬;->㚬:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sget-object p2, L䆀/䂻/㚬/㚬;->䆀:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTranslationY()F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, p0, L䆀/䂻/㚬/㚬;->㺴:F

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, L䆀/䂻/㚬/㚬;->㚬:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, L䆀/䂻/㚬/㚬;->㺴:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float p1, p1

    sget-object p2, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float p2, p2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ICI1KC4vPiUuNi9NFkFcQQ=="

    invoke-static {v3}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "TQlBXEE="

    invoke-static {p1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, L䆀/䂻/㚬/㚬;->ᆻ:J

    :cond_5
    :goto_1
    return v0
.end method

.method public 㚬(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "AA8FEw4IBU8IDxUEDxVPAAIVCA4PTzIkLyU="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FQQZFU4RDQAIDw=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Ag4MTxYJABUSABER"

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "AA8FEw4IBU8IDxUEDxVPBBkVEwBPNSQ5NQ=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    sget-object p1, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    const-string v0, "NgkAFRIAERFBCQAXBEEPDhVBAwQED0EIDxIVAA0NBAVP"

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method public 䂻(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EgwSFQ5b"

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "AA8FEw4IBU8IDxUEDxVPAAIVCA4PTzIkLyU1Lg=="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "Ag4MTxYJABUSABER"

    invoke-static {p1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lorg/games/app/MainActivity;->ℓ:Lorg/games/app/MainActivity;

    const-string v0, "NgkAFRIAERFBCQAXBEEPDhVBAwQED0EIDxIVAA0NBAVP"

    invoke-static {v0}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method
