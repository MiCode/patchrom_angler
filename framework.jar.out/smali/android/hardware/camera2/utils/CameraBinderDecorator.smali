.class public Landroid/hardware/camera2/utils/CameraBinderDecorator;
.super Ljava/lang/Object;
.source "CameraBinderDecorator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;
    }
.end annotation


# static fields
.field public static final ALREADY_EXISTS:I = -0x11

.field public static final BAD_VALUE:I = -0x16

.field public static final DEAD_OBJECT:I = -0x20

.field public static final EACCES:I = -0xd

.field public static final EBUSY:I = -0x10

.field public static final ENODEV:I = -0x13

.field public static final EOPNOTSUPP:I = -0x5f

.field public static final EUSERS:I = -0x57

.field public static final INVALID_OPERATION:I = -0x26

.field public static final NO_ERROR:I = 0x0

.field public static final PERMISSION_DENIED:I = -0x1

.field public static final TIMED_OUT:I = -0x6e


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    new-instance v0, Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;-><init>()V

    invoke-static {p0, v0}, Landroid/hardware/camera2/utils/Decorator;->newInstance(Ljava/lang/Object;Landroid/hardware/camera2/utils/Decorator$DecoratorListener;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static throwOnError(I)V
    .locals 6
    .param p0, "errorFlag"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 104
    sparse-switch p0, :sswitch_data_0

    .line 140
    if-gez p0, :cond_0

    .line 141
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    .line 142
    const-string/jumbo v1, "Unknown camera device error %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-direct {v0, v4, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 106
    :sswitch_0
    return-void

    .line 108
    :sswitch_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Lacking privileges to access camera service"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :sswitch_2
    return-void

    .line 114
    :sswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad argument passed to camera service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :sswitch_4
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    throw v0

    .line 118
    :sswitch_5
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    .line 119
    const-string/jumbo v1, "Operation timed out in camera service"

    .line 118
    invoke-direct {v0, v4, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 121
    :sswitch_6
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    throw v0

    .line 123
    :sswitch_7
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    throw v0

    .line 125
    :sswitch_8
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    throw v0

    .line 127
    :sswitch_9
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    throw v0

    .line 129
    :sswitch_a
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    throw v0

    .line 131
    :sswitch_b
    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    .line 132
    const-string/jumbo v1, "Illegal state encountered in camera service."

    .line 131
    invoke-direct {v0, v4, v1}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    return-void

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e -> :sswitch_5
        -0x5f -> :sswitch_a
        -0x57 -> :sswitch_8
        -0x26 -> :sswitch_b
        -0x20 -> :sswitch_4
        -0x16 -> :sswitch_3
        -0x13 -> :sswitch_9
        -0x11 -> :sswitch_2
        -0x10 -> :sswitch_7
        -0xd -> :sswitch_6
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
